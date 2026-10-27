.class Lbcl$a;
.super Ljava/lang/Object;
.source "LocationModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbcl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbcl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lbcl;

    invoke-direct {v0}, Lbcl;-><init>()V

    sput-object v0, Lbcl$a;->a:Lbcl;

    return-void
.end method
