.class Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity$3;
.super Ljava/lang/Object;
.source "SoundTestActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->dm(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic LR:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;

.field final synthetic LV:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;Ljava/lang/String;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity$3;->LR:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;

    iput-object p2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity$3;->LV:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity$3;->LR:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->f(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity$3;->LV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    return-void
.end method
