.class public Lcom/xiaopeng/factory/model/factorytest/hardwaretest/lcd/ScreenModel;
.super Ljava/lang/Object;
.source "ScreenModel.java"


# static fields
.field public static final PATH_SCREEN_DIAGNOSIS:Ljava/lang/String; = "/sys/class/spi_master/spi12/spi12.0/inap562t_dia"

.field public static final SCREEN_DIAGNOSIS_PASS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ScreenModel"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method
