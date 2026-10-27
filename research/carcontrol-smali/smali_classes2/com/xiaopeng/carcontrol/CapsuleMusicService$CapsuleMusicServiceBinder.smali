.class public Lcom/xiaopeng/carcontrol/CapsuleMusicService$CapsuleMusicServiceBinder;
.super Landroid/os/Binder;
.source "CapsuleMusicService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/CapsuleMusicService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CapsuleMusicServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/CapsuleMusicService;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/carcontrol/CapsuleMusicService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 453
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService$CapsuleMusicServiceBinder;->this$0:Lcom/xiaopeng/carcontrol/CapsuleMusicService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/xiaopeng/carcontrol/CapsuleMusicService;
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/CapsuleMusicService$CapsuleMusicServiceBinder;->this$0:Lcom/xiaopeng/carcontrol/CapsuleMusicService;

    return-object v0
.end method
