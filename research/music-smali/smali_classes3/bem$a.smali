.class Lbem$a;
.super Ljava/lang/Object;
.source "NeteaseManagerModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lbem;

    invoke-direct {v0}, Lbem;-><init>()V

    sput-object v0, Lbem$a;->a:Lbem;

    return-void
.end method
