.class Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity$2;
.super Ljava/lang/Object;
.source "BrightnessTestActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic GC:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity$2;->GC:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity$2;->GC:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;

    iget v0, v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->Gx:I

    .line 95
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity$2;->GC:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;

    invoke-static {v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->c(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 96
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity$2;->GC:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;

    iget v1, v1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->Gv:I

    if-lt v0, v1, :cond_1

    .line 97
    nop

    .line 99
    const-wide/16 v1, 0xc

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    goto :goto_1

    .line 100
    :catch_0
    move-exception v1

    .line 101
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 103
    :goto_1
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity$2;->GC:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;

    new-instance v2, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity$2$1;

    invoke-direct {v2, p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity$2$1;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity$2;I)V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 109
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity$2;->GC:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;

    invoke-static {v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->c(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    goto :goto_2

    .line 96
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 114
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity$2;->GC:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;

    invoke-static {v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->c(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 115
    :goto_3
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity$2;->GC:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;

    iget v1, v1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->Gw:I

    if-gt v0, v1, :cond_3

    .line 116
    nop

    .line 118
    const-wide/16 v1, 0x6

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 121
    goto :goto_4

    .line 119
    :catch_1
    move-exception v1

    .line 120
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 122
    :goto_4
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity$2;->GC:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;

    new-instance v2, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity$2$2;

    invoke-direct {v2, p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity$2$2;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity$2;I)V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 128
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity$2;->GC:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;

    invoke-static {v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->c(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 129
    goto :goto_5

    .line 115
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 133
    :cond_3
    :goto_5
    return-void
.end method
