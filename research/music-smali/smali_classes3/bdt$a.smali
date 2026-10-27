.class Lbdt$a;
.super Ljava/lang/Object;
.source "MenuManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbdt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbdt;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lbdt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbdt;-><init>(Lbdt$1;)V

    sput-object v0, Lbdt$a;->a:Lbdt;

    return-void
.end method
