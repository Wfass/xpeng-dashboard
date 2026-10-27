.class public abstract Lbox;
.super Ljava/lang/Object;
.source "BaseCommand.java"


# instance fields
.field private mData:Ljava/lang/String;

.field private mEvent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lbox;->mEvent:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lbox;->mData:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .line 25
    invoke-static {}, Lbpa;->a()Lbpa;

    move-result-object v0

    invoke-virtual {v0, p0}, Lbpa;->a(Lbox;)V

    return-void
.end method

.method protected abstract a(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public doCommand()V
    .locals 2

    .line 29
    iget-object v0, p0, Lbox;->mEvent:Ljava/lang/String;

    iget-object v1, p0, Lbox;->mData:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lbox;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public abstract getCommand()Ljava/lang/String;
.end method

.method public onEvent()V
    .locals 2

    .line 17
    sget-boolean v0, Lcom/xiaopeng/musicradio/a;->b:Z

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lbox;->mEvent:Ljava/lang/String;

    iget-object v1, p0, Lbox;->mData:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lbox;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Lbox;->a()V

    :goto_0
    return-void
.end method
