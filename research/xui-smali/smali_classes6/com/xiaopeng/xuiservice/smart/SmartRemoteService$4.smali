.class Lcom/xiaopeng/xuiservice/smart/SmartRemoteService$4;
.super Ljava/lang/Object;
.source "SmartRemoteService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;->playSurpriseSound()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;

    .line 197
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService$4;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .param p1, "paramMediaPlayer"    # Landroid/media/MediaPlayer;
    .param p2, "paramInt1"    # I
    .param p3, "paramInt2"    # I

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService$4;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;->access$200(Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;Z)V

    .line 201
    return v1
.end method
