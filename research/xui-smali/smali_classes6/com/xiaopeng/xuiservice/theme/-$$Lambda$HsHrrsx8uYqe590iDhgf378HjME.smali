.class public final synthetic Lcom/xiaopeng/xuiservice/theme/-$$Lambda$HsHrrsx8uYqe590iDhgf378HjME;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaopeng/xuiservice/theme/-$$Lambda$HsHrrsx8uYqe590iDhgf378HjME;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaopeng/xuiservice/theme/-$$Lambda$HsHrrsx8uYqe590iDhgf378HjME;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/theme/-$$Lambda$HsHrrsx8uYqe590iDhgf378HjME;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/theme/-$$Lambda$HsHrrsx8uYqe590iDhgf378HjME;->INSTANCE:Lcom/xiaopeng/xuiservice/theme/-$$Lambda$HsHrrsx8uYqe590iDhgf378HjME;

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

    check-cast p1, Lcom/xiaopeng/xuimanager/operation/OperationResource;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/theme/Themes;->operationResourceToTheme(Lcom/xiaopeng/xuimanager/operation/OperationResource;)Lcom/xiaopeng/xuimanager/theme/Theme;

    move-result-object p1

    return-object p1
.end method
