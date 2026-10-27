.class public final synthetic Lcom/xiaopeng/xuiservice/theme/-$$Lambda$0F4XzT1K41-x-ZDyxbMiVKzvP3M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaopeng/xuiservice/theme/-$$Lambda$0F4XzT1K41-x-ZDyxbMiVKzvP3M;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaopeng/xuiservice/theme/-$$Lambda$0F4XzT1K41-x-ZDyxbMiVKzvP3M;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/theme/-$$Lambda$0F4XzT1K41-x-ZDyxbMiVKzvP3M;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/theme/-$$Lambda$0F4XzT1K41-x-ZDyxbMiVKzvP3M;->INSTANCE:Lcom/xiaopeng/xuiservice/theme/-$$Lambda$0F4XzT1K41-x-ZDyxbMiVKzvP3M;

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

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/theme/Themes;->operationResourceToThemeElement(Lcom/xiaopeng/xuimanager/operation/OperationResource;)Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    move-result-object p1

    return-object p1
.end method
