.class Lbcj$a;
.super Ljava/lang/Object;
.source "LocalLoveManagerOpr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbcj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbcj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lbcj;

    invoke-direct {v0}, Lbcj;-><init>()V

    sput-object v0, Lbcj$a;->a:Lbcj;

    return-void
.end method
