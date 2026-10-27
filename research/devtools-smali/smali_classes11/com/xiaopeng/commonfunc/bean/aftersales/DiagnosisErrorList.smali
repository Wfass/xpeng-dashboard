.class public Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisErrorList;
.super Ljava/lang/Object;
.source "DiagnosisErrorList.java"


# static fields
.field private static final UNKNOWN_DIAGNOSIS_NAME:Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisName;


# instance fields
.field private mDiagnosisDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisData;",
            ">;"
        }
    .end annotation
.end field

.field private final mErrorCodeList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 9
    new-instance v0, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisName;

    const-string v1, "\u672a\u77e5"

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisErrorList;->UNKNOWN_DIAGNOSIS_NAME:Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisName;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisName;",
            ">;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisErrorList;->mErrorCodeList:Ljava/util/Map;

    .line 15
    return-void
.end method

.method private newDiagnosisDataList()V
    .locals 1

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisErrorList;->mDiagnosisDataList:Ljava/util/List;

    .line 19
    return-void
.end method


# virtual methods
.method public addDiagnosisData(Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisData;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisErrorList;->mDiagnosisDataList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 35
    invoke-direct {p0}, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisErrorList;->newDiagnosisDataList()V

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisErrorList;->mDiagnosisDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method

.method public addErrorCode(ILcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisName;)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisErrorList;->mErrorCodeList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    return-void
.end method

.method public clearDiagnosisData()V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisErrorList;->mDiagnosisDataList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 42
    invoke-direct {p0}, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisErrorList;->newDiagnosisDataList()V

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisErrorList;->mDiagnosisDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 45
    return-void
.end method

.method public getDiagnosisData(I)Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisData;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisErrorList;->mDiagnosisDataList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 49
    invoke-direct {p0}, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisErrorList;->newDiagnosisDataList()V

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisErrorList;->mDiagnosisDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisData;

    return-object p1
.end method

.method public getDiagnosisDataSize()I
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisErrorList;->mDiagnosisDataList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 56
    invoke-direct {p0}, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisErrorList;->newDiagnosisDataList()V

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisErrorList;->mDiagnosisDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDiagnosisName(I)Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisName;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisErrorList;->mErrorCodeList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisName;

    .line 27
    if-nez p1, :cond_0

    .line 28
    sget-object p1, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisErrorList;->UNKNOWN_DIAGNOSIS_NAME:Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisName;

    .line 30
    :cond_0
    return-object p1
.end method
