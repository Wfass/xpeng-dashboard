.class Lbwe$1;
.super Ljava/lang/Object;
.source "AsrToTextNode.java"

# interfaces
.implements Lbvd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbwe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field b:Ljava/lang/String;

.field final synthetic c:Lbwe;


# direct methods
.method constructor <init>(Lbwe;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lbwe$1;->c:Lbwe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 208
    iput-boolean p1, p0, Lbwe$1;->a:Z

    const-string p1, ""

    .line 209
    iput-object p1, p0, Lbwe$1;->b:Ljava/lang/String;

    return-void
.end method
