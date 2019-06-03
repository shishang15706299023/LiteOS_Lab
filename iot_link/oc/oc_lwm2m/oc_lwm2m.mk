################################################################################
# this is used for compile the oc lwm2m agent
################################################################################

ifneq ($(cfg_oc_lwm2m_type),none)

    OC_LWM2M_AL_SOURCE  = ${wildcard $(iot_link_root)/oc/oc_lwm2m/oc_lwm2m_al/*.c} 
    C_SOURCES += $(OC_LWM2M_AL_SOURCE)	
    		
    OC_LWM2M_AL_INC = -I $(iot_link_root)/oc/oc_lwm2m/oc_lwm2m_al
    C_INCLUDES += $(OC_LWM2M_AL_INC)
    
    OC_LWM2M_AL_DEFS = -D cfg_oc_lwm2m_enable=1
    C_DEFS += $(OC_LWM2M_AL_DEFS)
    
    #we should choose one of the oc lwm2m implemnt
    include $(iot_link_root)/oc/oc_lwm2m/oc_lwm2m_imp/oc_lwm2m_imp.mk
    
    #we should choose one of the oc lwm2m demo if you want to do some  display
    include $(iot_link_root)/oc/oc_lwm2m/oc_lwm2m_demo/oc_lwm2m_demo.mk

endif