.class public Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;
.super Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckBaseItem;
.source "CheckCategoryItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;
    }
.end annotation


# instance fields
.field private mCategory:Ljava/lang/String;

.field private mEcu:Ljava/lang/String;

.field private mFaultLevel:I

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckBaseItem;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;->mItems:Ljava/util/List;

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;->mFaultLevel:I

    return-void
.end method

.method private constructor <init>(Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckBaseItem;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;->mItems:Ljava/util/List;

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;->mFaultLevel:I

    .line 24
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->access$000(Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;->mTitle:Ljava/lang/String;

    .line 25
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->access$100(Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;->mCategory:Ljava/lang/String;

    .line 26
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->access$200(Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;->setItems(Ljava/util/List;)V

    .line 27
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->access$300(Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;->mEcu:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$1;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;-><init>(Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "category",
            "ecu"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckBaseItem;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;->mItems:Ljava/util/List;

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;->mFaultLevel:I

    .line 19
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;->mCategory:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;->mEcu:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addItem(Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public generatorResult()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckErrorDetail;",
            ">;"
        }
    .end annotation

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 100
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;

    .line 101
    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;->hasIssue()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    new-instance v3, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckErrorDetail;

    invoke-direct {v3}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckErrorDetail;-><init>()V

    .line 103
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;->mCategory:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckErrorDetail;->setSys(Ljava/lang/String;)V

    .line 104
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;->mEcu:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckErrorDetail;->setEcu(Ljava/lang/String;)V

    .line 105
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckErrorDetail;->setEcuName(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckErrorDetail;->setKey(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;->getLevel()I

    move-result v4

    invoke-static {v4}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/SelfCheckUtil;->level2Str(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckErrorDetail;->setLevel(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckErrorDetail;->setErrorName(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;->getResult()Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;

    move-result-object v2

    .line 110
    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->getDetailResult()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckResult;

    .line 111
    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckResult;->getSigName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckResult;->getSigVal()I

    move-result v4

    invoke-virtual {v3, v5, v4}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckErrorDetail;->addResultItem(Ljava/lang/String;I)V

    goto :goto_1

    .line 113
    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getCheckSize()I
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getEcu()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;->mEcu:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorLevel()I
    .locals 4

    .line 130
    iget v0, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;->mFaultLevel:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    .line 131
    iput v0, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;->mFaultLevel:I

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;

    .line 133
    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;->hasIssue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;->getLevel()I

    move-result v2

    iget v3, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;->mFaultLevel:I

    if-le v2, v3, :cond_1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;->getLevel()I

    move-result v3

    :cond_1
    iput v3, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;->mFaultLevel:I

    goto :goto_0

    .line 138
    :cond_2
    iget v0, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;->mFaultLevel:I

    return v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public getLevel()I
    .locals 4

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;

    .line 123
    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;->getLevel()I

    move-result v3

    if-le v3, v1, :cond_0

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;->getLevel()I

    move-result v1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public setEcu(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ecu"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;->mEcu:Ljava/lang/String;

    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "items"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;",
            ">;)V"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;->mItems:Ljava/util/List;

    return-void
.end method

.method public startCheck()V
    .locals 0

    return-void
.end method
