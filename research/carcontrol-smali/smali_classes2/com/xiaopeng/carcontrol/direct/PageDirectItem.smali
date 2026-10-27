.class public Lcom/xiaopeng/carcontrol/direct/PageDirectItem;
.super Ljava/lang/Object;
.source "PageDirectItem.java"


# instance fields
.field private mData:Ljava/lang/Object;

.field private mPageAction:Lcom/xiaopeng/carcontrol/direct/action/PageAction;

.field private mSecondName:Ljava/lang/String;

.field private mSupportAction:Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/carcontrol/direct/action/PageAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pageAction"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;->mPageAction:Lcom/xiaopeng/carcontrol/direct/action/PageAction;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/xiaopeng/carcontrol/direct/action/PageAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "pageAction"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;->mData:Ljava/lang/Object;

    .line 25
    iput-object p2, p0, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;->mPageAction:Lcom/xiaopeng/carcontrol/direct/action/PageAction;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/xiaopeng/carcontrol/direct/action/PageAction;Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "pageAction",
            "supportAction"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;->mData:Ljava/lang/Object;

    .line 36
    iput-object p2, p0, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;->mPageAction:Lcom/xiaopeng/carcontrol/direct/action/PageAction;

    .line 37
    iput-object p3, p0, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;->mSupportAction:Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "supportAction"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;->mData:Ljava/lang/Object;

    .line 49
    iput-object p2, p0, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;->mSupportAction:Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lcom/xiaopeng/carcontrol/direct/action/PageAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "secondName",
            "data",
            "pageAction"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p2, p0, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;->mData:Ljava/lang/Object;

    .line 30
    iput-object p3, p0, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;->mPageAction:Lcom/xiaopeng/carcontrol/direct/action/PageAction;

    .line 31
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;->mSecondName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lcom/xiaopeng/carcontrol/direct/action/PageAction;Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "secondName",
            "data",
            "pageAction",
            "supportAction"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p2, p0, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;->mData:Ljava/lang/Object;

    .line 42
    iput-object p3, p0, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;->mPageAction:Lcom/xiaopeng/carcontrol/direct/action/PageAction;

    .line 43
    iput-object p4, p0, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;->mSupportAction:Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;

    .line 44
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;->mSecondName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;->mData:Ljava/lang/Object;

    return-object v0
.end method

.method public getPageAction()Lcom/xiaopeng/carcontrol/direct/action/PageAction;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;->mPageAction:Lcom/xiaopeng/carcontrol/direct/action/PageAction;

    return-object v0
.end method

.method public getSecondName()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;->mSecondName:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportAction()Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;->mSupportAction:Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;

    return-object v0
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 65
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;->mData:Ljava/lang/Object;

    return-void
.end method

.method public setPageAction(Lcom/xiaopeng/carcontrol/direct/action/PageAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pageAction"
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;->mPageAction:Lcom/xiaopeng/carcontrol/direct/action/PageAction;

    return-void
.end method

.method public setSecondName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "secondName"
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;->mSecondName:Ljava/lang/String;

    return-void
.end method

.method public setSupportAction(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "supportAction"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;->mSupportAction:Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PageDirectItem{data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;->mData:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPageAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;->mPageAction:Lcom/xiaopeng/carcontrol/direct/action/PageAction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSupportAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;->mSupportAction:Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", secondName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;->mSecondName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
