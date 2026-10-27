.class public Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordAdapter;
.super Landroid/widget/BaseAdapter;
.source "DiagnosisRecordAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordAdapter$a;
    }
.end annotation


# instance fields
.field private Fb:Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisErrorList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public cP(I)Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisData;
    .locals 0

    .line 32
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCount()I
    .locals 1

    .line 23
    nop

    .line 24
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordAdapter;->Fb:Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisErrorList;

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordAdapter;->Fb:Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisErrorList;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisErrorList;->getDiagnosisDataSize()I

    move-result v0

    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordAdapter;->cP(I)Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisData;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 37
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 47
    if-nez p2, :cond_0

    .line 48
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c009b

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 49
    new-instance p3, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordAdapter$a;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordAdapter$a;-><init>(Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordAdapter;Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordAdapter$1;)V

    .line 50
    const v0, 0x7f0901b9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordAdapter$a;->Fc:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f0901ba

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordAdapter$a;->Fd:Landroid/widget/TextView;

    .line 52
    const v0, 0x7f0901bb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordAdapter$a;->Fe:Landroid/widget/TextView;

    .line 53
    const v0, 0x7f0903de

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordAdapter$a;->Ff:Landroid/widget/TextView;

    .line 54
    const v0, 0x7f0903df

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordAdapter$a;->Fg:Landroid/widget/TextView;

    .line 55
    const v0, 0x7f0901bc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordAdapter$a;->Fh:Landroid/widget/TextView;

    .line 56
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordAdapter$a;

    .line 61
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordAdapter;->Fb:Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisErrorList;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisErrorList;->getDiagnosisData(I)Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisData;

    move-result-object p1

    .line 62
    iget-object v0, p3, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordAdapter$a;->Fc:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisData;->getErrorCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p3, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordAdapter$a;->Ff:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisData;->getTriggerTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p3, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordAdapter$a;->Fg:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisData;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v0, p3, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordAdapter$a;->Fh:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisData;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v0, p3, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordAdapter$a;->Fd:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordAdapter;->Fb:Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisErrorList;

    invoke-virtual {p1}, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisData;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisErrorList;->getDiagnosisName(I)Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisName;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisName;->getErrorNameCn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object p3, p3, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordAdapter$a;->Fe:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordAdapter;->Fb:Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisErrorList;

    invoke-virtual {p1}, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisData;->getErrorCode()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisErrorList;->getDiagnosisName(I)Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisName;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisName;->getErrorNameEng()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    return-object p2
.end method

.method public setDataList(Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisErrorList;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordAdapter;->Fb:Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisErrorList;

    .line 42
    return-void
.end method
