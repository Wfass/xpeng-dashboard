.class Lcom/xiaopeng/xuiservice/message/PushMessage$SingletonHolder;
.super Ljava/lang/Object;
.source "PushMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/message/PushMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final instance:Lcom/xiaopeng/xuiservice/message/PushMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/xiaopeng/xuiservice/message/PushMessage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/message/PushMessage;-><init>(Lcom/xiaopeng/xuiservice/message/PushMessage$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/message/PushMessage$SingletonHolder;->instance:Lcom/xiaopeng/xuiservice/message/PushMessage;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()Lcom/xiaopeng/xuiservice/message/PushMessage;
    .locals 1

    .line 27
    sget-object v0, Lcom/xiaopeng/xuiservice/message/PushMessage$SingletonHolder;->instance:Lcom/xiaopeng/xuiservice/message/PushMessage;

    return-object v0
.end method
