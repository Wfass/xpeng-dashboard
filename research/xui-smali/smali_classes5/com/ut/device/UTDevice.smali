.class public Lcom/ut/device/UTDevice;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUtdid(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 21
    invoke-static {p0}, Lcom/ta/utdid2/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setExtendFactor(Ljava/lang/String;)V
    .locals 0
    .param p0, "extendFactor"    # Ljava/lang/String;

    .line 28
    invoke-static {p0}, Lcom/ta/utdid2/device/d;->setExtendFactor(Ljava/lang/String;)V

    .line 29
    return-void
.end method
