.class Lbrz$a;
.super Ljava/lang/Object;
.source "StatSessionUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbrz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbrz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lbrz;

    invoke-direct {v0}, Lbrz;-><init>()V

    sput-object v0, Lbrz$a;->a:Lbrz;

    return-void
.end method
