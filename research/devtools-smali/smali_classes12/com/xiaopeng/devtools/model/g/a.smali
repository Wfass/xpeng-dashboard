.class public Lcom/xiaopeng/devtools/model/g/a;
.super Ljava/lang/Object;
.source "CanTestModel.java"

# interfaces
.implements Lcom/xiaopeng/devtools/model/g/c;


# instance fields
.field private uE:Lcom/xiaopeng/devtools/presenter/f/c;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/devtools/presenter/f/c;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/xiaopeng/devtools/model/g/a;->uE:Lcom/xiaopeng/devtools/presenter/f/c;

    .line 14
    return-void
.end method


# virtual methods
.method public a(IIILjava/lang/String;[I)V
    .locals 0

    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 18
    return-void
.end method
