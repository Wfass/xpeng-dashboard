.class Lcom/xiaopeng/commonfunc/model/diagnosis/DiagnosisCodeModel$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "DiagnosisCodeModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/commonfunc/model/diagnosis/DiagnosisCodeModel;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Ljava/util/List<",
        "Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisErrorList;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/commonfunc/model/diagnosis/DiagnosisCodeModel;


# direct methods
.method constructor <init>(Lcom/xiaopeng/commonfunc/model/diagnosis/DiagnosisCodeModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/commonfunc/model/diagnosis/DiagnosisCodeModel;

    .line 85
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/diagnosis/DiagnosisCodeModel$1;->this$0:Lcom/xiaopeng/commonfunc/model/diagnosis/DiagnosisCodeModel;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
