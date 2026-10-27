.class Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$InstanceHolder;
.super Ljava/lang/Object;
.source "XpSoundPlayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final sService:Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 224
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$InstanceHolder;->sService:Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$500()Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;
    .locals 1

    .line 223
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$InstanceHolder;->sService:Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;

    return-object v0
.end method
