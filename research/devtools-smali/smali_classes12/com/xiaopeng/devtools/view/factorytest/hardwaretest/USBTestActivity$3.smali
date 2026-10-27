.class Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity$3;
.super Ljava/lang/Object;
.source "USBTestActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic HU:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity$3;->HU:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 254
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity$3;->HU:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->c(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity$3;->HU:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity$3;->HU:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;

    invoke-static {v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->d(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;)Lcom/xiaopeng/devtools/system/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/system/a/b;->kG()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 257
    :cond_0
    const-string v0, "USBTestActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mStoragePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity$3;->HU:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;

    invoke-static {v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->c(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    const-string v0, "sdcard/usbtest/"

    invoke-static {v0}, Lcom/xiaopeng/devtools/utils/g;->aW(Ljava/lang/String;)Z

    .line 259
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity$3;->HU:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity$3;->HU:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->e(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity$3;->HU:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->f(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity$3;->HU:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;

    invoke-static {v5}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->c(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/usbtest/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "test.zip"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "sdcard/usbtest/test.zip"

    invoke-static/range {v1 .. v6}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;ZLandroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v7, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity$3;->HU:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity$3;->HU:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->g(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;)Landroid/widget/TextView;

    move-result-object v9

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity$3;->HU:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->h(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;)Landroid/widget/TextView;

    move-result-object v10

    const-string v11, "sdcard/usbtest/test.zip"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity$3;->HU:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;

    .line 262
    invoke-static {v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->c(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/usbtest/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "test.zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 261
    invoke-static/range {v7 .. v12}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;ZLandroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    return-void
.end method
