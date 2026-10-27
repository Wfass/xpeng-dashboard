.class public final synthetic Lcom/xiaopeng/xuimanager/makeuplight/-$$Lambda$MakeupLightManager$Igo2_uSZRCxpiknzZ5VtqFp77VI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaopeng/xuimanager/makeuplight/-$$Lambda$MakeupLightManager$Igo2_uSZRCxpiknzZ5VtqFp77VI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaopeng/xuimanager/makeuplight/-$$Lambda$MakeupLightManager$Igo2_uSZRCxpiknzZ5VtqFp77VI;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/makeuplight/-$$Lambda$MakeupLightManager$Igo2_uSZRCxpiknzZ5VtqFp77VI;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuimanager/makeuplight/-$$Lambda$MakeupLightManager$Igo2_uSZRCxpiknzZ5VtqFp77VI;->INSTANCE:Lcom/xiaopeng/xuimanager/makeuplight/-$$Lambda$MakeupLightManager$Igo2_uSZRCxpiknzZ5VtqFp77VI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->lambda$Igo2_uSZRCxpiknzZ5VtqFp77VI(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
