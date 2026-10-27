.class Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity$2$2;
.super Ljava/lang/Object;
.source "SoundTestActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic LS:I

.field final synthetic LU:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity$2;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity$2;I)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity$2$2;->LU:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity$2;

    iput p2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity$2$2;->LS:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity$2$2;->LU:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity$2;

    iget-object v0, v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity$2;->LR:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity$2$2;->LS:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 141
    return-void
.end method
