.class Lbdv$a;
.super Ljava/lang/Object;
.source "QqManagerModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbdv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbdv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lbdv;

    invoke-direct {v0}, Lbdv;-><init>()V

    sput-object v0, Lbdv$a;->a:Lbdv;

    return-void
.end method
