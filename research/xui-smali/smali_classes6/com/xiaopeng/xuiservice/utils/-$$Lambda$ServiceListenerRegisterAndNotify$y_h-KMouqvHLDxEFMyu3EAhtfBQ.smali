.class public final synthetic Lcom/xiaopeng/xuiservice/utils/-$$Lambda$ServiceListenerRegisterAndNotify$y_h-KMouqvHLDxEFMyu3EAhtfBQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

.field private final synthetic f$1:Landroid/os/IInterface;

.field private final synthetic f$2:I

.field private final synthetic f$3:I

.field private final synthetic f$4:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;Landroid/os/IInterface;IILandroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$ServiceListenerRegisterAndNotify$y_h-KMouqvHLDxEFMyu3EAhtfBQ;->f$0:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$ServiceListenerRegisterAndNotify$y_h-KMouqvHLDxEFMyu3EAhtfBQ;->f$1:Landroid/os/IInterface;

    iput p3, p0, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$ServiceListenerRegisterAndNotify$y_h-KMouqvHLDxEFMyu3EAhtfBQ;->f$2:I

    iput p4, p0, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$ServiceListenerRegisterAndNotify$y_h-KMouqvHLDxEFMyu3EAhtfBQ;->f$3:I

    iput-object p5, p0, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$ServiceListenerRegisterAndNotify$y_h-KMouqvHLDxEFMyu3EAhtfBQ;->f$4:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 5

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$ServiceListenerRegisterAndNotify$y_h-KMouqvHLDxEFMyu3EAhtfBQ;->f$0:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$ServiceListenerRegisterAndNotify$y_h-KMouqvHLDxEFMyu3EAhtfBQ;->f$1:Landroid/os/IInterface;

    iget v2, p0, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$ServiceListenerRegisterAndNotify$y_h-KMouqvHLDxEFMyu3EAhtfBQ;->f$2:I

    iget v3, p0, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$ServiceListenerRegisterAndNotify$y_h-KMouqvHLDxEFMyu3EAhtfBQ;->f$3:I

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$ServiceListenerRegisterAndNotify$y_h-KMouqvHLDxEFMyu3EAhtfBQ;->f$4:Landroid/os/IBinder;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->lambda$register$0(Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;Landroid/os/IInterface;IILandroid/os/IBinder;)V

    return-void
.end method
