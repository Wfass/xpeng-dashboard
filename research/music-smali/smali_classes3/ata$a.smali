.class Lata$a;
.super Ljava/lang/Object;
.source "DataDirtyModelFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lata;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Lata;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lata;-><init>(Lata$1;)V

    sput-object v0, Lata$a;->a:Lata;

    return-void
.end method
