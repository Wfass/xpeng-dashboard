.class public Lcom/xiaopeng/devtools/bean/aftersales/DiagnosisName;
.super Ljava/lang/Object;
.source "DiagnosisName.java"


# instance fields
.field private mErrorNameCn:Ljava/lang/String;

.field private mErrorNameEng:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/xiaopeng/devtools/bean/aftersales/DiagnosisName;->mErrorNameCn:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/xiaopeng/devtools/bean/aftersales/DiagnosisName;->mErrorNameEng:Ljava/lang/String;

    .line 11
    return-void
.end method


# virtual methods
.method public getErrorNameCn()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/xiaopeng/devtools/bean/aftersales/DiagnosisName;->mErrorNameCn:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorNameEng()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/xiaopeng/devtools/bean/aftersales/DiagnosisName;->mErrorNameEng:Ljava/lang/String;

    return-object v0
.end method
