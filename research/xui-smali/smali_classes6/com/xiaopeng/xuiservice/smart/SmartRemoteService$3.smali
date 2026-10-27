.class Lcom/xiaopeng/xuiservice/smart/SmartRemoteService$3;
.super Ljava/lang/Object;
.source "SmartRemoteService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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

    .line 191
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService$3;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .line 194
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService$3;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;->access$200(Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;Z)V

    .line 195
    return-void
.end method
