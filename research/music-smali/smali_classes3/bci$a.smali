.class Lbci$a;
.super Ljava/lang/Object;
.source "LocalLoveManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbci;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbci;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    new-instance v0, Lbci;

    invoke-direct {v0}, Lbci;-><init>()V

    sput-object v0, Lbci$a;->a:Lbci;

    return-void
.end method
