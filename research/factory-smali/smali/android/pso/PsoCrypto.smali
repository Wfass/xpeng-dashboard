.class public interface abstract Landroid/pso/PsoCrypto;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/pso/PsoCrypto$Desc;
    }
.end annotation


# static fields
.field public static final D21:I = 0x15

.field public static final D22:I = 0x16

.field public static final E28:I = 0x1c

.field public static final OTA_DEC_MOD2:I = 0x2


# virtual methods
.method public abstract CertKeyPreset(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation
.end method

.method public abstract CertKeyVerify()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation
.end method

.method public abstract CertKeyVerify(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation
.end method

.method public abstract GetPSUID(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation
.end method

.method public abstract McuKeyPreset(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation
.end method

.method public abstract ble_package_decryptverify_mtom([BI)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation
.end method

.method public abstract checkIfPreseted()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation
.end method

.method public abstract e28ota_package_decryptverify_tofile(Ljava/lang/String;Ljava/lang/String;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation
.end method

.method public abstract get_carType()I
.end method

.method public abstract get_dec_mtom_processed_len()J
.end method

.method public abstract get_dec_tofile_processed_len()J
.end method

.method public abstract get_dec_tomem_processed_len()J
.end method

.method public abstract ota_dec_stop()V
.end method

.method public abstract ota_gen_mcu_key()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation
.end method

.method public abstract ota_mcu_decrypt([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation
.end method

.method public abstract ota_mcu_encrypt([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation
.end method

.method public abstract ota_package_decryptverify_mtom([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation
.end method

.method public abstract ota_package_decryptverify_tofile(Ljava/lang/String;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation
.end method

.method public abstract ota_package_decryptverify_tomem(Ljava/lang/String;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation
.end method

.method public abstract ota_security_access_key(III)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation
.end method

.method public abstract set_carType(I)V
.end method
