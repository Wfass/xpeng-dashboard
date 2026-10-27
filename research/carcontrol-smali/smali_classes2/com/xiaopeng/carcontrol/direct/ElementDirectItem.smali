.class public Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;
.super Ljava/lang/Object;
.source "ElementDirectItem.java"


# instance fields
.field private id:I

.field private key:Ljava/lang/String;

.field private mSupportAction:Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;

.field private parentId:I


# direct methods
.method public constructor <init>(Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "supportCheckAction"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;->mSupportAction:Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "id"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;->key:Ljava/lang/String;

    .line 23
    iput p2, p0, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;->id:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "id",
            "parentId"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;->key:Ljava/lang/String;

    .line 28
    iput p2, p0, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;->id:I

    .line 29
    iput p3, p0, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;->parentId:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "id",
            "parentId",
            "supportAction"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;->key:Ljava/lang/String;

    .line 40
    iput p2, p0, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;->id:I

    .line 41
    iput p3, p0, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;->parentId:I

    .line 42
    iput-object p4, p0, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;->mSupportAction:Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "id",
            "supportAction"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;->key:Ljava/lang/String;

    .line 34
    iput p2, p0, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;->id:I

    .line 35
    iput-object p3, p0, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;->mSupportAction:Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;->id:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getParentId()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;->parentId:I

    return v0
.end method

.method public getSupportAction()Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;->mSupportAction:Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;

    return-object v0
.end method

.method public setId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 62
    iput p1, p0, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;->id:I

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;->key:Ljava/lang/String;

    return-void
.end method

.method public setParentId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parentId"
        }
    .end annotation

    .line 70
    iput p1, p0, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;->parentId:I

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

    .line 78
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;->mSupportAction:Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ElementDirectItem{key=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", parentId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;->parentId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSupportAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;->mSupportAction:Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
