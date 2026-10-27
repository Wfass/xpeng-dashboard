.class Lcom/android/car/xpeng/ai/pretreat/CarPretreatService$MessageHandler;
.super Landroid/os/Handler;
.source "CarPretreatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/xpeng/ai/pretreat/CarPretreatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageHandler"
.end annotation


# static fields
.field public static final MSG_HV_REQ:I = 0x1

.field public static final MSG_HV_REQ_CACEL:I = 0x2

.field public static final TIME_HV_REQ_CYCLE:I = 0x1388

.field public static final TIME_HV_REQ_DURATION:I = 0x6ddd00


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;

    .line 76
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 77
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .line 81
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 82
    return-void
.end method
