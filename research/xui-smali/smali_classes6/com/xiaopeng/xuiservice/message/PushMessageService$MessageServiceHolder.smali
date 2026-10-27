.class final Lcom/xiaopeng/xuiservice/message/PushMessageService$MessageServiceHolder;
.super Ljava/lang/Object;
.source "PushMessageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/message/PushMessageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MessageServiceHolder"
.end annotation


# static fields
.field static final INSTANCE:Lcom/xiaopeng/xuiservice/message/PushMessageService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Lcom/xiaopeng/xuiservice/message/PushMessageService;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/message/PushMessageService;-><init>(Lcom/xiaopeng/xuiservice/message/PushMessageService$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/message/PushMessageService$MessageServiceHolder;->INSTANCE:Lcom/xiaopeng/xuiservice/message/PushMessageService;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
