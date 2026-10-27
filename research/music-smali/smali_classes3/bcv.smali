.class public abstract Lbcv;
.super Ljava/lang/Object;
.source "BaseUpdate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbcv$a;
    }
.end annotation


# instance fields
.field protected a:Z

.field protected b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lbcv;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lbcv;->a:Z

    return-void
.end method

.method public abstract a(Lbcv$a;)V
.end method
