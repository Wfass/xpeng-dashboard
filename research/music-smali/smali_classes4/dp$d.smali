.class public final Ldp$d;
.super Ljava/lang/Object;
.source "FontResourcesParserCompat.java"

# interfaces
.implements Ldp$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field private final a:Ler;

.field private final b:I

.field private final c:I

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ler;IILjava/lang/String;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Ldp$d;->a:Ler;

    .line 88
    iput p2, p0, Ldp$d;->c:I

    .line 89
    iput p3, p0, Ldp$d;->b:I

    .line 90
    iput-object p4, p0, Ldp$d;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ler;
    .locals 1

    .line 99
    iget-object v0, p0, Ldp$d;->a:Ler;

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 103
    iget v0, p0, Ldp$d;->c:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 107
    iget v0, p0, Ldp$d;->b:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Ldp$d;->d:Ljava/lang/String;

    return-object v0
.end method
