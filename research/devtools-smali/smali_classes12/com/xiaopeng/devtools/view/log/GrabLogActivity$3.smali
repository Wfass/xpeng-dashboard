.class Lcom/xiaopeng/devtools/view/log/GrabLogActivity$3;
.super Ljava/lang/Object;
.source "GrabLogActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/view/log/GrabLogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qe:Lcom/xiaopeng/devtools/view/log/GrabLogActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;)V
    .locals 0

    .line 621
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity$3;->Qe:Lcom/xiaopeng/devtools/view/log/GrabLogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$4Tctr6vkgZRep_a--dnOiZhqCEk(Lcom/xiaopeng/devtools/view/log/GrabLogActivity$3;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity$3;->nF()V

    return-void
.end method

.method private synthetic nF()V
    .locals 5

    .line 629
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity$3;->Qe:Lcom/xiaopeng/devtools/view/log/GrabLogActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->b(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity$3;->Qe:Lcom/xiaopeng/devtools/view/log/GrabLogActivity;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity$3;->Qe:Lcom/xiaopeng/devtools/view/log/GrabLogActivity;

    iget-object v3, v3, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->Fw:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f1001bd

    invoke-virtual {v1, v3, v2}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 624
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity$3;->Qe:Lcom/xiaopeng/devtools/view/log/GrabLogActivity;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->Fw:Ljava/lang/Double;

    .line 625
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/xiaopeng/devtools/a;->nw:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 626
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity$3;->Qe:Lcom/xiaopeng/devtools/view/log/GrabLogActivity;

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity$3;->Qe:Lcom/xiaopeng/devtools/view/log/GrabLogActivity;

    iget-object v2, v2, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->Fw:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    sget-object v4, Lcom/xiaopeng/devtools/a;->nw:[Ljava/lang/String;

    aget-object v4, v4, v0

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/xiaopeng/lib/utils/b;->u(Ljava/lang/String;I)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->Fw:Ljava/lang/Double;

    .line 627
    const-string v1, "GrabLogActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mGetFileSizeThread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/xiaopeng/devtools/a;->nw:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity$3;->Qe:Lcom/xiaopeng/devtools/view/log/GrabLogActivity;

    iget-object v3, v3, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->Fw:Ljava/lang/Double;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 625
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 629
    :cond_0
    new-instance v0, Lcom/xiaopeng/devtools/view/log/-$$Lambda$GrabLogActivity$3$4Tctr6vkgZRep_a--dnOiZhqCEk;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/log/-$$Lambda$GrabLogActivity$3$4Tctr6vkgZRep_a--dnOiZhqCEk;-><init>(Lcom/xiaopeng/devtools/view/log/GrabLogActivity$3;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->c(Ljava/lang/Runnable;)V

    .line 630
    return-void
.end method
