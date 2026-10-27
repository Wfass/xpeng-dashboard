.class final Lcom/xiaopeng/xuiservice/opensdk/manager/VoiceManager$SingleInstanceHolder;
.super Ljava/lang/Object;
.source "VoiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/opensdk/manager/VoiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingleInstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/xuiservice/opensdk/manager/VoiceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/xiaopeng/xuiservice/opensdk/manager/VoiceManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/VoiceManager;-><init>(Lcom/xiaopeng/xuiservice/opensdk/manager/VoiceManager$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/VoiceManager$SingleInstanceHolder;->INSTANCE:Lcom/xiaopeng/xuiservice/opensdk/manager/VoiceManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()Lcom/xiaopeng/xuiservice/opensdk/manager/VoiceManager;
    .locals 1

    .line 27
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/VoiceManager$SingleInstanceHolder;->INSTANCE:Lcom/xiaopeng/xuiservice/opensdk/manager/VoiceManager;

    return-object v0
.end method
