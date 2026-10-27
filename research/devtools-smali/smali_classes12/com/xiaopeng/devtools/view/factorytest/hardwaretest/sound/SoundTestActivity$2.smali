.class Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity$2;
.super Ljava/lang/Object;
.source "SoundTestActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic LR:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity$2;->LR:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity$2;->LR:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->c(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;)I

    move-result v0

    .line 110
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity$2;->LR:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;

    invoke-static {v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->d(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;)Z

    move-result v1

    const-wide/16 v2, 0x3c

    if-nez v1, :cond_1

    .line 111
    :goto_0
    if-lez v0, :cond_1

    .line 112
    nop

    .line 114
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    goto :goto_1

    .line 115
    :catch_0
    move-exception v1

    .line 116
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 118
    :goto_1
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity$2;->LR:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;

    new-instance v4, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity$2$1;

    invoke-direct {v4, p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity$2$1;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity$2;I)V

    invoke-virtual {v1, v4}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 124
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity$2;->LR:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;

    invoke-static {v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->d(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    goto :goto_2

    .line 111
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 129
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity$2;->LR:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;

    invoke-static {v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->d(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 130
    :goto_3
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity$2;->LR:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;

    invoke-static {v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->e(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;)I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    if-ge v0, v1, :cond_3

    .line 131
    nop

    .line 133
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 136
    goto :goto_4

    .line 134
    :catch_1
    move-exception v1

    .line 135
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 137
    :goto_4
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity$2;->LR:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;

    new-instance v4, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity$2$2;

    invoke-direct {v4, p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity$2$2;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity$2;I)V

    invoke-virtual {v1, v4}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 143
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity$2;->LR:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;

    invoke-static {v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->d(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 144
    goto :goto_5

    .line 130
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 148
    :cond_3
    :goto_5
    return-void
.end method
