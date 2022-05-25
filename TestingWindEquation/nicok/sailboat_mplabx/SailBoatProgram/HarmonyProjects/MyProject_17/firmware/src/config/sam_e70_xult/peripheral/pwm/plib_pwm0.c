/*******************************************************************************
  PWM Peripheral Library Interface Source File

  Company
    Microchip Technology Inc.

  File Name
    plib_PWM0.c

  Summary
    PWM0 peripheral library source file.

  Description
    This file implements the interface to the PWM peripheral library.  This
    library provides access to and control of the associated peripheral
    instance.

*******************************************************************************/

// DOM-IGNORE-BEGIN
/*******************************************************************************
* Copyright (C) 2018 Microchip Technology Inc. and its subsidiaries.
*
* Subject to your compliance with these terms, you may use Microchip software
* and any derivatives exclusively with Microchip products. It is your
* responsibility to comply with third party license terms applicable to your
* use of third party software (including open source software) that may
* accompany Microchip software.
*
* THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
* EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
* WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
* PARTICULAR PURPOSE.
*
* IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
* INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
* WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
* BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
* FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
* ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
* THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
*******************************************************************************/
// DOM-IGNORE-END


// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

/*  This section lists the other files that are included in this file.
*/
#include "device.h"
#include "plib_pwm0.h"
#include "interrupts.h"


/* Object to hold callback function and context */
PWM_CALLBACK_OBJECT PWM0_CallbackObj;

/* Initialize enabled PWM channels */
void PWM0_Initialize (void)
{
    /* Clock configuration */
    PWM0_REGS->PWM_CLK = PWM_CLK_PREA_CLK | PWM_CLK_DIVA(1);

    /************** Channel 0 *************************/
    /* PWM channel mode configurations */
    PWM0_REGS->PWM_CH_NUM[0].PWM_CMR = PWM_CMR_CPRE_MCK | PWM_CMR_CALG_CENTER_ALIGNED
                    | PWM_CMR_CPOL_LOW_POLARITY | PWM_CMR_UPDS_UPDATE_AT_PERIOD \
                    | PWM_CMR_CES_SINGLE_EVENT | (PWM_CMR_DTE_Msk);

    /* PWM period */
    PWM0_REGS->PWM_CH_NUM[0].PWM_CPRD = 10000U;

    /* PWM duty cycle */
    PWM0_REGS->PWM_CH_NUM[0].PWM_CDTY = 0U;
    /* Dead time */
    PWM0_REGS->PWM_CH_NUM[0].PWM_DT = (100U << PWM_DT_DTL_Pos) | (100U);
         
    /* Enable counter event */
    PWM0_REGS->PWM_IER1 = 0x2;
    PWM0_CallbackObj.callback_fn = NULL;
     

    /************** Channel 1 *************************/
    /* PWM channel mode configurations */
    PWM0_REGS->PWM_CH_NUM[1].PWM_CMR = PWM_CMR_CPRE_MCK_DIV_128 | PWM_CMR_CALG_CENTER_ALIGNED
                    | PWM_CMR_CPOL_LOW_POLARITY | PWM_CMR_UPDS_UPDATE_AT_PERIOD \
                    | PWM_CMR_CES_SINGLE_EVENT | (PWM_CMR_DTE_Msk);

    /* PWM period */
    PWM0_REGS->PWM_CH_NUM[1].PWM_CPRD = 11700U;

    /* PWM duty cycle */
    PWM0_REGS->PWM_CH_NUM[1].PWM_CDTY = 11489U;
    /* Dead time */
    PWM0_REGS->PWM_CH_NUM[1].PWM_DT = (100U << PWM_DT_DTL_Pos) | (100U);
         
    /* Enable counter event */
    PWM0_REGS->PWM_IER1 = 0x2;
    PWM0_CallbackObj.callback_fn = NULL;
     
 
 
}

/* Start the PWM generation */
void PWM0_ChannelsStart (PWM_CHANNEL_MASK channelMask)
{
    PWM0_REGS->PWM_ENA = channelMask;
}

/* Stop the PWM generation */
void PWM0_ChannelsStop (PWM_CHANNEL_MASK channelMask)
{
    PWM0_REGS->PWM_DIS = channelMask;
}

/* configure PWM period */
void PWM0_ChannelPeriodSet (PWM_CHANNEL_NUM channel, uint16_t period)
{
    PWM0_REGS->PWM_CH_NUM[channel].PWM_CPRDUPD = period;
}

/* Read PWM period */
uint16_t PWM0_ChannelPeriodGet (PWM_CHANNEL_NUM channel)
{
    return (uint16_t)PWM0_REGS->PWM_CH_NUM[channel].PWM_CPRD;
}

/* Configure dead time */
void PWM0_ChannelDeadTimeSet (PWM_CHANNEL_NUM channel, uint16_t deadtime_high, uint16_t deadtime_low)
{
    PWM0_REGS->PWM_CH_NUM[channel].PWM_DTUPD = ((deadtime_low << PWM_DT_DTL_Pos) | deadtime_high);
}

/* Configure compare unit value */
void PWM0_CompareValueSet (PWM_COMPARE cmp_unit, uint16_t cmp_value)
{
    PWM0_REGS->PWM_CMP[cmp_unit].PWM_CMPVUPD = cmp_value;
}

/* Enable counter event */
void PWM0_ChannelCounterEventEnable (PWM_CHANNEL_MASK channelMask)
{
    PWM0_REGS->PWM_IER1 = channelMask;
}

/* Disable counter event */
void PWM0_ChannelCounterEventDisable (PWM_CHANNEL_MASK channelMask)
{
    PWM0_REGS->PWM_IDR1 = channelMask;
}


/* Enable synchronous update */
void PWM0_SyncUpdateEnable (void)
{
    PWM0_REGS->PWM_SCUC = PWM_SCUC_UPDULOCK_Msk;
}

/* Clear the fault status */
void PWM0_FaultStatusClear(PWM_FAULT_ID fault_id)
{
    PWM0_REGS->PWM_FCR = 0x1U << fault_id;
}

/* Override PWM outputs */
void PWM0_ChannelOverrideEnable(PWM_CHANNEL_NUM channel)
{
    PWM0_REGS->PWM_OS &= ~((1 << channel) | (1 << (channel + 16)));
    PWM0_REGS->PWM_OS |= ((0 << channel) | (0 << (channel + 16)));
}

/* Disable override of PWM outputs */
void PWM0_ChannelOverrideDisable(PWM_CHANNEL_NUM channel)
{
    PWM0_REGS->PWM_OS |= ((1 << channel) | (1 << (channel + 16)));
}

 /* Register callback function */
void PWM0_CallbackRegister(PWM_CALLBACK callback, uintptr_t context)
{
    PWM0_CallbackObj.callback_fn = callback;
    PWM0_CallbackObj.context = context;
}

/* Interrupt Handler */
void PWM0_InterruptHandler(void)
{
    uint32_t status;
    status = PWM0_REGS->PWM_ISR1;
    if (PWM0_CallbackObj.callback_fn != NULL)
    {
        PWM0_CallbackObj.callback_fn(status, PWM0_CallbackObj.context);
    }
}


/**
 End of File
*/
