# Auto-generated - DO NOT EDIT!
# To regenerate, edit openssl.config, then run:
#     ./import_openssl.sh import /path/to/openssl-1.0.2t.tar.gz
#
# This script will append to the following variables:
#
#    LOCAL_CFLAGS
#    LOCAL_C_INCLUDES
#    LOCAL_SRC_FILES_$(TARGET_ARCH)
#    LOCAL_SRC_FILES_$(TARGET_2ND_ARCH)
#    LOCAL_CFLAGS_$(TARGET_ARCH)
#    LOCAL_CFLAGS_$(TARGET_2ND_ARCH)
#    LOCAL_ADDITIONAL_DEPENDENCIES


LOCAL_ADDITIONAL_DEPENDENCIES += $(LOCAL_PATH)/Ssl-config-target.mk

common_cflags :=

common_src_files := \
  ssl/bio_ssl.c \
  ssl/d1_both.c \
  ssl/d1_clnt.c \
  ssl/d1_lib.c \
  ssl/d1_meth.c \
  ssl/d1_pkt.c \
  ssl/d1_srtp.c \
  ssl/d1_srvr.c \
  ssl/kssl.c \
  ssl/s23_clnt.c \
  ssl/s23_lib.c \
  ssl/s23_meth.c \
  ssl/s23_pkt.c \
  ssl/s23_srvr.c \
  ssl/s2_clnt.c \
  ssl/s2_enc.c \
  ssl/s2_lib.c \
  ssl/s2_meth.c \
  ssl/s2_pkt.c \
  ssl/s2_srvr.c \
  ssl/s3_both.c \
  ssl/s3_cbc.c \
  ssl/s3_clnt.c \
  ssl/s3_enc.c \
  ssl/s3_lib.c \
  ssl/s3_meth.c \
  ssl/s3_pkt.c \
  ssl/s3_srvr.c \
  ssl/ssl_algs.c \
  ssl/ssl_asn1.c \
  ssl/ssl_cert.c \
  ssl/ssl_ciph.c \
  ssl/ssl_conf.c \
  ssl/ssl_err.c \
  ssl/ssl_err2.c \
  ssl/ssl_lib.c \
  ssl/ssl_rsa.c \
  ssl/ssl_sess.c \
  ssl/ssl_stat.c \
  ssl/ssl_txt.c \
  ssl/ssl_utst.c \
  ssl/t1_clnt.c \
  ssl/t1_enc.c \
  ssl/t1_ext.c \
  ssl/t1_lib.c \
  ssl/t1_meth.c \
  ssl/t1_reneg.c \
  ssl/t1_srvr.c \
  ssl/t1_trce.c \
  ssl/tls_srp.c \

common_c_includes := \
  vendor/intel/external/openssl/. \
  vendor/intel/external/openssl/crypto \
  vendor/intel/external/openssl/include \

x86_cflags :=

x86_src_files :=

x86_exclude_files :=

x86_64_cflags :=

x86_64_src_files :=

x86_64_exclude_files :=


LOCAL_CFLAGS += $(common_cflags)
LOCAL_C_INCLUDES += $(common_c_includes)

LOCAL_SRC_FILES_x86 += $(filter-out $(x86_exclude_files),$(common_src_files) $(x86_src_files))
LOCAL_CFLAGS_x86 += $(x86_cflags)

LOCAL_SRC_FILES_x86_64 += $(filter-out $(x86_64_exclude_files),$(common_src_files) $(x86_64_src_files))
LOCAL_CFLAGS_x86_64 += $(x86_64_cflags)
