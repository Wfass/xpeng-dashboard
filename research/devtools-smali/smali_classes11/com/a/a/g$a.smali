.class Lcom/a/a/g$a;
.super Lcom/a/a/g;
.source "PropertyValuesHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field mFloatAnimatedValue:F

.field ng:Lcom/a/a/c;


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[F)V
    .locals 1

    .line 918
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/a/a/g;-><init>(Ljava/lang/String;Lcom/a/a/g$1;)V

    .line 919
    invoke-virtual {p0, p2}, Lcom/a/a/g$a;->setFloatValues([F)V

    .line 920
    return-void
.end method


# virtual methods
.method calculateValue(F)V
    .locals 1

    .line 938
    iget-object v0, p0, Lcom/a/a/g$a;->ng:Lcom/a/a/c;

    invoke-virtual {v0, p1}, Lcom/a/a/c;->getFloatValue(F)F

    move-result p1

    iput p1, p0, Lcom/a/a/g$a;->mFloatAnimatedValue:F

    .line 939
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 889
    invoke-virtual {p0}, Lcom/a/a/g$a;->dt()Lcom/a/a/g$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic ds()Lcom/a/a/g;
    .locals 1

    .line 889
    invoke-virtual {p0}, Lcom/a/a/g$a;->dt()Lcom/a/a/g$a;

    move-result-object v0

    return-object v0
.end method

.method public dt()Lcom/a/a/g$a;
    .locals 2

    .line 948
    invoke-super {p0}, Lcom/a/a/g;->ds()Lcom/a/a/g;

    move-result-object v0

    check-cast v0, Lcom/a/a/g$a;

    .line 949
    iget-object v1, v0, Lcom/a/a/g$a;->mU:Lcom/a/a/f;

    check-cast v1, Lcom/a/a/c;

    iput-object v1, v0, Lcom/a/a/g$a;->ng:Lcom/a/a/c;

    .line 950
    return-object v0
.end method

.method getAnimatedValue()Ljava/lang/Object;
    .locals 1

    .line 943
    iget v0, p0, Lcom/a/a/g$a;->mFloatAnimatedValue:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public varargs setFloatValues([F)V
    .locals 0

    .line 932
    invoke-super {p0, p1}, Lcom/a/a/g;->setFloatValues([F)V

    .line 933
    iget-object p1, p0, Lcom/a/a/g$a;->mU:Lcom/a/a/f;

    check-cast p1, Lcom/a/a/c;

    iput-object p1, p0, Lcom/a/a/g$a;->ng:Lcom/a/a/c;

    .line 934
    return-void
.end method
