.class public final synthetic L-$$Lambda$VtiW5xx5Z2QC-nuUpwbW5rZ8HoE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field private final synthetic f$0:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L-$$Lambda$VtiW5xx5Z2QC-nuUpwbW5rZ8HoE;->f$0:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, L-$$Lambda$VtiW5xx5Z2QC-nuUpwbW5rZ8HoE;->f$0:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getProtectionDomain()Ljava/security/ProtectionDomain;

    move-result-object v0

    check-cast v0, Ljava/lang/Object;

    return-object v0
.end method
