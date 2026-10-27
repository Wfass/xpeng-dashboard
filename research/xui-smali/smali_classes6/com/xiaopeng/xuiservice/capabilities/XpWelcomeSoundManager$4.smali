.class Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$4;
.super Ljava/lang/Object;
.source "XpWelcomeSoundManager.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->perpareMediaPlayer(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;

    .line 373
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$4;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .line 377
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$4;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->stop()V

    .line 378
    return-void
.end method
