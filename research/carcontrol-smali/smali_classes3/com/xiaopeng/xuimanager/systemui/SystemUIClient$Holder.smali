.class Lcom/xiaopeng/xuimanager/systemui/SystemUIClient$Holder;
.super Ljava/lang/Object;
.source "SystemUIClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/systemui/SystemUIClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final sInstance:Lcom/xiaopeng/xuimanager/systemui/SystemUIClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 118
    new-instance v0, Lcom/xiaopeng/xuimanager/systemui/SystemUIClient;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/systemui/SystemUIClient;-><init>(Lcom/xiaopeng/xuimanager/systemui/SystemUIClient$1;)V

    sput-object v0, Lcom/xiaopeng/xuimanager/systemui/SystemUIClient$Holder;->sInstance:Lcom/xiaopeng/xuimanager/systemui/SystemUIClient;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/xuimanager/systemui/SystemUIClient;
    .locals 1

    .line 117
    sget-object v0, Lcom/xiaopeng/xuimanager/systemui/SystemUIClient$Holder;->sInstance:Lcom/xiaopeng/xuimanager/systemui/SystemUIClient;

    return-object v0
.end method
