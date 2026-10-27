.class public Lcom/xiaopeng/xuiservice/utils/CarTypeDefines$CarType;
.super Ljava/lang/Object;
.source "CarTypeDefines.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/utils/CarTypeDefines;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CarType"
.end annotation


# instance fields
.field public cduType:Ljava/lang/String;

.field public code:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public saleName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cduType(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/utils/CarTypeDefines$CarType;
    .locals 0
    .param p1, "cduType"    # Ljava/lang/String;

    .line 69
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/utils/CarTypeDefines$CarType;->cduType:Ljava/lang/String;

    .line 70
    return-object p0
.end method

.method public code(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/utils/CarTypeDefines$CarType;
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/utils/CarTypeDefines$CarType;->code:Ljava/lang/String;

    .line 55
    return-object p0
.end method

.method public name(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/utils/CarTypeDefines$CarType;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 59
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/utils/CarTypeDefines$CarType;->name:Ljava/lang/String;

    .line 60
    return-object p0
.end method

.method public saleName(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/utils/CarTypeDefines$CarType;
    .locals 0
    .param p1, "saleName"    # Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/utils/CarTypeDefines$CarType;->saleName:Ljava/lang/String;

    .line 65
    return-object p0
.end method
