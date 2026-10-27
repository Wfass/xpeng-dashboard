.class Lbmm$a;
.super Ljava/lang/Object;
.source "ProgramDataModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbmm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbmm;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 69
    new-instance v0, Lbmm;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbmm;-><init>(Lbmm$1;)V

    sput-object v0, Lbmm$a;->a:Lbmm;

    return-void
.end method
