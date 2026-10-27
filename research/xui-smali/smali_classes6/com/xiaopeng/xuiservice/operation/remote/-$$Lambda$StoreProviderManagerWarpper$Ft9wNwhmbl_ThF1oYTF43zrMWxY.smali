.class public final synthetic Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$StoreProviderManagerWarpper$Ft9wNwhmbl_ThF1oYTF43zrMWxY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$StoreProviderManagerWarpper$Ft9wNwhmbl_ThF1oYTF43zrMWxY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$StoreProviderManagerWarpper$Ft9wNwhmbl_ThF1oYTF43zrMWxY;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$StoreProviderManagerWarpper$Ft9wNwhmbl_ThF1oYTF43zrMWxY;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$StoreProviderManagerWarpper$Ft9wNwhmbl_ThF1oYTF43zrMWxY;->INSTANCE:Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$StoreProviderManagerWarpper$Ft9wNwhmbl_ThF1oYTF43zrMWxY;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->lambda$appListOperationQuery$3(I)Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;

    move-result-object p1

    return-object p1
.end method
