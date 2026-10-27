.class public Lcom/xiaopeng/commonfunc/utils/b;
.super Ljava/lang/Object;
.source "AfterSalesHelper.java"


# static fields
.field private static sContext:Landroid/content/Context;


# direct methods
.method public static en()Lcom/xiaopeng/aftersales/AfterSalesManager;
    .locals 2

    .line 93
    sget-object v0, Lcom/xiaopeng/commonfunc/utils/b;->sContext:Landroid/content/Context;

    const-string v1, "xiaopeng_aftersales"

    .line 94
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/aftersales/AfterSalesManager;

    .line 93
    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0

    .line 89
    sput-object p0, Lcom/xiaopeng/commonfunc/utils/b;->sContext:Landroid/content/Context;

    .line 90
    return-void
.end method
