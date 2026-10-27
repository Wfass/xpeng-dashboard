.class Laxi$a;
.super Ljava/lang/Object;
.source "DataDirtyModelFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laxi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Laxi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Laxi;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Laxi;-><init>(Laxi$1;)V

    sput-object v0, Laxi$a;->a:Laxi;

    return-void
.end method
