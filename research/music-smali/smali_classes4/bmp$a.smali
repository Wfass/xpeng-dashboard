.class Lbmp$a;
.super Ljava/lang/Object;
.source "ReadLoveOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbmp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbmp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lbmp;

    invoke-direct {v0}, Lbmp;-><init>()V

    sput-object v0, Lbmp$a;->a:Lbmp;

    return-void
.end method
