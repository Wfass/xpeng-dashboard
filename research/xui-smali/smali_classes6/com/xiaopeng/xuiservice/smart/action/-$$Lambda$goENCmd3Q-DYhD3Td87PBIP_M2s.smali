.class public final synthetic Lcom/xiaopeng/xuiservice/smart/action/-$$Lambda$goENCmd3Q-DYhD3Td87PBIP_M2s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaopeng/xuiservice/smart/action/-$$Lambda$goENCmd3Q-DYhD3Td87PBIP_M2s;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaopeng/xuiservice/smart/action/-$$Lambda$goENCmd3Q-DYhD3Td87PBIP_M2s;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/action/-$$Lambda$goENCmd3Q-DYhD3Td87PBIP_M2s;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/action/-$$Lambda$goENCmd3Q-DYhD3Td87PBIP_M2s;->INSTANCE:Lcom/xiaopeng/xuiservice/smart/action/-$$Lambda$goENCmd3Q-DYhD3Td87PBIP_M2s;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/xiaopeng/xuiservice/smart/action/Action;

    invoke-interface {p1}, Lcom/xiaopeng/xuiservice/smart/action/Action;->start()V

    return-void
.end method
