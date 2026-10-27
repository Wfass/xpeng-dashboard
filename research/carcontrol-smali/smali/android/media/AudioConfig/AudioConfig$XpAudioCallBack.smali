.class Landroid/media/AudioConfig/AudioConfig$XpAudioCallBack;
.super Ljava/lang/Object;
.source "AudioConfig.java"

# interfaces
.implements Landroid/media/AudioManager$AudioCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioConfig/AudioConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "XpAudioCallBack"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioConfig/AudioConfig;


# direct methods
.method private constructor <init>(Landroid/media/AudioConfig/AudioConfig;)V
    .locals 0

    .line 493
    iput-object p1, p0, Landroid/media/AudioConfig/AudioConfig$XpAudioCallBack;->this$0:Landroid/media/AudioConfig/AudioConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioConfig/AudioConfig;Landroid/media/AudioConfig/AudioConfig$1;)V
    .locals 0

    .line 493
    invoke-direct {p0, p1}, Landroid/media/AudioConfig/AudioConfig$XpAudioCallBack;-><init>(Landroid/media/AudioConfig/AudioConfig;)V

    return-void
.end method


# virtual methods
.method public AudioServiceCallBack(II)V
    .locals 1

    .line 497
    invoke-static {}, Landroid/media/AudioConfig/AudioConfig;->access$100()Landroid/media/AudioConfig/AudioConfig$AudioServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 498
    invoke-static {}, Landroid/media/AudioConfig/AudioConfig;->access$100()Landroid/media/AudioConfig/AudioConfig$AudioServiceListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/media/AudioConfig/AudioConfig$AudioServiceListener;->AudioServiceCallBack(II)V

    :cond_0
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 1

    .line 503
    invoke-static {}, Landroid/media/AudioConfig/AudioConfig;->access$100()Landroid/media/AudioConfig/AudioConfig$AudioServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 504
    invoke-static {}, Landroid/media/AudioConfig/AudioConfig;->access$100()Landroid/media/AudioConfig/AudioConfig$AudioServiceListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/media/AudioConfig/AudioConfig$AudioServiceListener;->onErrorEvent(II)V

    :cond_0
    return-void
.end method
