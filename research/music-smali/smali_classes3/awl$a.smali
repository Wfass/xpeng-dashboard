.class Lawl$a;
.super Ljava/lang/Object;
.source "DataDirtyModelFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lawl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lawl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Lawl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lawl;-><init>(Lawl$1;)V

    sput-object v0, Lawl$a;->a:Lawl;

    return-void
.end method
