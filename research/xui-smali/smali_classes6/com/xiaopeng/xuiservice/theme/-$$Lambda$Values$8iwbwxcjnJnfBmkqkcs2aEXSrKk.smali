.class public final synthetic Lcom/xiaopeng/xuiservice/theme/-$$Lambda$Values$8iwbwxcjnJnfBmkqkcs2aEXSrKk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaopeng/xuiservice/theme/-$$Lambda$Values$8iwbwxcjnJnfBmkqkcs2aEXSrKk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaopeng/xuiservice/theme/-$$Lambda$Values$8iwbwxcjnJnfBmkqkcs2aEXSrKk;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/theme/-$$Lambda$Values$8iwbwxcjnJnfBmkqkcs2aEXSrKk;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/theme/-$$Lambda$Values$8iwbwxcjnJnfBmkqkcs2aEXSrKk;->INSTANCE:Lcom/xiaopeng/xuiservice/theme/-$$Lambda$Values$8iwbwxcjnJnfBmkqkcs2aEXSrKk;

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

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/theme/Values;->lambda$appendStringArray$0(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method
