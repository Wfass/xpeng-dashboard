.class Lbmt$a;
.super Ljava/lang/Object;
.source "ProgramModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbmt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbmt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 226
    new-instance v0, Lbmt;

    invoke-direct {v0}, Lbmt;-><init>()V

    sput-object v0, Lbmt$a;->a:Lbmt;

    return-void
.end method
