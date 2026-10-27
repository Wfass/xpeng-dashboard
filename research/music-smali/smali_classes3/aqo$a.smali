.class Laqo$a;
.super Ljava/lang/Object;
.source "ProgramAisuggest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laqo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Laqo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Laqo;

    invoke-direct {v0}, Laqo;-><init>()V

    sput-object v0, Laqo$a;->a:Laqo;

    return-void
.end method
